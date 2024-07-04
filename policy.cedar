@id("permit admin write access when scope has write")
permit (
  principal in Jans::Role::"admin",
  action == Jans::Action::"Write",
  resource == Jans::Application::"OnlineShop200"
)
when {
    Jans::AccessToken::"accesstoken00001".scope == ["Write"]
};
