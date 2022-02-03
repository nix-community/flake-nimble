{
  description = ''Neverwinter Nights 1 data accessor library'';
  inputs.src-neverwinter-v1_1_0.flake = false;
  inputs.src-neverwinter-v1_1_0.type = "github";
  inputs.src-neverwinter-v1_1_0.owner = "niv";
  inputs.src-neverwinter-v1_1_0.repo = "neverwinter.nim";
  inputs.src-neverwinter-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-neverwinter-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-neverwinter-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-neverwinter-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}