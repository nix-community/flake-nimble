{
  description = ''Special Functions of Stats & Physics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-spfun-main.flake = false;
  inputs.src-spfun-main.type = "github";
  inputs.src-spfun-main.owner = "c-blake";
  inputs.src-spfun-main.repo = "spfun";
  inputs.src-spfun-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-spfun-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-spfun-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-spfun-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}