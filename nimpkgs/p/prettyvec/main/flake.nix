{
  description = ''Small library for working with vectors'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-prettyvec-main.flake = false;
  inputs.src-prettyvec-main.type = "github";
  inputs.src-prettyvec-main.owner = "prettybauble";
  inputs.src-prettyvec-main.repo = "prettyvec";
  inputs.src-prettyvec-main.ref = "refs/heads/main";
  inputs.src-prettyvec-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-prettyvec-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-prettyvec-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-prettyvec-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}