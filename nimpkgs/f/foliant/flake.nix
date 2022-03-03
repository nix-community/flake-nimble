{
  description = ''Documentation generator that produces pdf and docx from Markdown. Uses Pandoc and LaTeX behind the scenes.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."foliant-develop".type = "github";
  inputs."foliant-develop".owner = "riinr";
  inputs."foliant-develop".repo = "flake-nimble";
  inputs."foliant-develop".ref = "flake-pinning";
  inputs."foliant-develop".dir = "nimpkgs/f/foliant/develop";
  inputs."foliant-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foliant-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."foliant-master".type = "github";
  inputs."foliant-master".owner = "riinr";
  inputs."foliant-master".repo = "flake-nimble";
  inputs."foliant-master".ref = "flake-pinning";
  inputs."foliant-master".dir = "nimpkgs/f/foliant/master";
  inputs."foliant-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."foliant-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}