{
  description = ''json de/serializer for tuples and more'';
  inputs.src-jser-0_2_0.flake = false;
  inputs.src-jser-0_2_0.type = "github";
  inputs.src-jser-0_2_0.owner = "niv";
  inputs.src-jser-0_2_0.repo = "jser.nim";
  inputs.src-jser-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-jser-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-jser-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-jser-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}