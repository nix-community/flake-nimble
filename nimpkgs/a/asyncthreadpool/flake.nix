{
  description = ''
    Awaitable threadpool
  '';
  inputs.src-asyncthreadpool.url = "https://github.com/yglukhov/asyncthreadpool";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
