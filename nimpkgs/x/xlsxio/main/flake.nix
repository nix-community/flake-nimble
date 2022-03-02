{
  description = ''This is a xlsxio wrapper done Nim in mind.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-xlsxio-main.flake = false;
  inputs.src-xlsxio-main.type = "github";
  inputs.src-xlsxio-main.owner = "jiiihpeeh";
  inputs.src-xlsxio-main.repo = "xlsxio-nim";
  inputs.src-xlsxio-main.ref = "refs/heads/main";
  inputs.src-xlsxio-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-xlsxio-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xlsxio-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-xlsxio-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}