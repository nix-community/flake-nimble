{
  description = ''Awaitable threadpool'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-asyncthreadpool-main.flake = false;
  inputs.src-asyncthreadpool-main.type = "github";
  inputs.src-asyncthreadpool-main.owner = "yglukhov";
  inputs.src-asyncthreadpool-main.repo = "asyncthreadpool";
  inputs.src-asyncthreadpool-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-asyncthreadpool-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-asyncthreadpool-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-asyncthreadpool-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}