{
  description = ''Bindings for the C++ Standard Template Library (STL)'';
  inputs."cppstl-master".url = "path:./master";
  inputs."cppstl-v0_2_2".url = "path:./v0_2_2";
  inputs."cppstl-v0_3_0".url = "path:./v0_3_0";
  inputs."cppstl-v0_3_1".url = "path:./v0_3_1";
  inputs."cppstl-v0_4_0".url = "path:./v0_4_0";
  inputs."cppstl-v0_4_1".url = "path:./v0_4_1";
  inputs."cppstl-v0_5_0".url = "path:./v0_5_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}