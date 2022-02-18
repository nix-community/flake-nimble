{
  description = ''A simple TLDR pages client'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-mt-main.flake = false;
  inputs.src-mt-main.type = "other";
  inputs.src-mt-main.owner = "eqf0";
  inputs.src-mt-main.repo = "mt";
  inputs.src-mt-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-mt-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mt-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-mt-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}