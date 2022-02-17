{
  description = ''A package to compile nim functions for AWS Lambda'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."awslambda-master".type = "github";
  inputs."awslambda-master".owner = "riinr";
  inputs."awslambda-master".repo = "flake-nimble";
  inputs."awslambda-master".ref = "flake-pinning";
  inputs."awslambda-master".dir = "nimpkgs/a/awslambda/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}