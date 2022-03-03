{
  description = ''Kaitai Struct runtime library for Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs."kaitai_struct_nim_runtime-master".type = "github";
  inputs."kaitai_struct_nim_runtime-master".owner = "riinr";
  inputs."kaitai_struct_nim_runtime-master".repo = "flake-nimble";
  inputs."kaitai_struct_nim_runtime-master".ref = "flake-pinning";
  inputs."kaitai_struct_nim_runtime-master".dir = "nimpkgs/k/kaitai_struct_nim_runtime/master";
  inputs."kaitai_struct_nim_runtime-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


    inputs."kaitai_struct_nim_runtime-0_9".type = "github";
  inputs."kaitai_struct_nim_runtime-0_9".owner = "riinr";
  inputs."kaitai_struct_nim_runtime-0_9".repo = "flake-nimble";
  inputs."kaitai_struct_nim_runtime-0_9".ref = "flake-pinning";
  inputs."kaitai_struct_nim_runtime-0_9".dir = "nimpkgs/k/kaitai_struct_nim_runtime/0_9";
  inputs."kaitai_struct_nim_runtime-0_9".inputs.nixpkgs.follows = "nixpkgs";
  inputs."kaitai_struct_nim_runtime-0_9".inputs.flakeNimbleLib.follows = "flakeNimbleLib";


  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
    let lib = flakeNimbleLib.lib;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs" "flakeNimbleLib"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}