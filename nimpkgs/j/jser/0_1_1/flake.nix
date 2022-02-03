{
  description = ''json de/serializer for tuples and more'';
  inputs.src-jser-0_1_1.flake = false;
  inputs.src-jser-0_1_1.type = "github";
  inputs.src-jser-0_1_1.owner = "niv";
  inputs.src-jser-0_1_1.repo = "jser.nim";
  inputs.src-jser-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-jser-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jser-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jser-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}