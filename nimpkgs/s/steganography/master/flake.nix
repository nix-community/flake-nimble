{
  description = ''Steganography - hide data inside an image.'';
  inputs.src-steganography-master.flake = false;
  inputs.src-steganography-master.type = "github";
  inputs.src-steganography-master.owner = "treeform";
  inputs.src-steganography-master.repo = "steganography";
  inputs.src-steganography-master.ref = "refs/heads/master";
  
  
  inputs."pixie".url = "path:../../../p/pixie";
  inputs."pixie".type = "github";
  inputs."pixie".owner = "riinr";
  inputs."pixie".repo = "flake-nimble";
  inputs."pixie".ref = "flake-pinning";
  inputs."pixie".dir = "nimpkgs/p/pixie";

  outputs = { self, nixpkgs, src-steganography-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-steganography-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-steganography-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}