{
  description = ''Pack rects into bigger rect'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
    inputs."rect_packer-master".type = "github";
  inputs."rect_packer-master".owner = "riinr";
  inputs."rect_packer-master".repo = "flake-nimble";
  inputs."rect_packer-master".ref = "flake-pinning";
  inputs."rect_packer-master".dir = "nimpkgs/r/rect_packer/master";

  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}