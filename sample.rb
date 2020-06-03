# Railsアプリケーションのコントローラーに関して以下のコードをみてください。
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters , if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :avatar])
  end
end

# このコードが何を実現しているのか説明してください。
# 特に、この記述がApplicationControllerクラスに書いてあることに
# 留意して、どのような動作になるのか解説を行なってください。
"ApplicationControllerを継承しているコントローラー内の全てのアクションが実行される前に、before_actionが実行される。
実行されたのがdevise_controllerであった場合、configure_permitted_parametersが呼び出される。
devise_parameter_sanitizerが実行され、nicknameカラムとavatarカラムのへの保存が許可される。"


# 解答
"ApplicationControllerを継承しているコントローラー（ranking, users, およびdevise用のコントローラー）内の全てのアクションが実行される前に、before_actionが実行される。

もしそれがdeviseのコントローラーだったら（devise_controller?というメソッドの返り値がtrueだったら）configure_permitted_parametersを呼ぶ。

configure_permitted_parametersの中で、devise_parameter_sanitizerが事項されるが、これはストロングパラメータのdevise版。サインアップ時に、nicknameとavatarカラムへの保存を許可する。

（１ヶ所違うごとに-2点）

<補足>
deviseのコントローラーは、デフォルトではアプリケーション内に作成されません。興味がある方は、GitHubでソースコードを確認するとdeviseのコントローラーがApplictaionControllerを継承していることが確認できます。"
