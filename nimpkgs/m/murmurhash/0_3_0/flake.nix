{
  description = ''Pure nim implementation of MurmurHash'';
  inputs.src-murmurhash-0_3_0.flake = false;
  inputs.src-murmurhash-0_3_0.type = "github";
  inputs.src-murmurhash-0_3_0.owner = "cwpearson";
  inputs.src-murmurhash-0_3_0.repo = "nim-murmurhash";
  inputs.src-murmurhash-0_3_0.ref = "refs/tags/0.3.0";
  
  outputs = { self, nixpkgs, src-murmurhash-0_3_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmurhash-0_3_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmurhash-0_3_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}