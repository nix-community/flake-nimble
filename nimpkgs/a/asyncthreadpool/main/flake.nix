{
  description = ''Awaitable threadpool'';
  inputs.src-asyncthreadpool-main.flake = false;
  inputs.src-asyncthreadpool-main.type = "github";
  inputs.src-asyncthreadpool-main.owner = "yglukhov";
  inputs.src-asyncthreadpool-main.repo = "asyncthreadpool";
  inputs.src-asyncthreadpool-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-asyncthreadpool-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncthreadpool-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-asyncthreadpool-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}