{
  description = ''UUID library for Nim'';
  inputs."uuids-master".url = "path:./master";
  inputs."uuids-v0_1_0".url = "path:./v0_1_0";
  inputs."uuids-v0_1_1".url = "path:./v0_1_1";
  inputs."uuids-v0_1_10".url = "path:./v0_1_10";
  inputs."uuids-v0_1_11".url = "path:./v0_1_11";
  inputs."uuids-v0_1_2".url = "path:./v0_1_2";
  inputs."uuids-v0_1_3".url = "path:./v0_1_3";
  inputs."uuids-v0_1_4".url = "path:./v0_1_4";
  inputs."uuids-v0_1_5".url = "path:./v0_1_5";
  inputs."uuids-v0_1_6".url = "path:./v0_1_6";
  inputs."uuids-v0_1_7".url = "path:./v0_1_7";
  inputs."uuids-v0_1_8".url = "path:./v0_1_8";
  inputs."uuids-v0_1_9".url = "path:./v0_1_9";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}