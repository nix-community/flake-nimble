{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-v1_0_1.flake = false;
  inputs.src-neverwinter-v1_0_1.type = "github";
  inputs.src-neverwinter-v1_0_1.owner = "niv";
  inputs.src-neverwinter-v1_0_1.repo = "neverwinter.nim";
  inputs.src-neverwinter-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-neverwinter-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}