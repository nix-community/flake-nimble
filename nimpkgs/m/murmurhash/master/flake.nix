{
  description = ''Pure nim implementation of MurmurHash'';
  inputs.src-murmurhash-master.flake = false;
  inputs.src-murmurhash-master.type = "github";
  inputs.src-murmurhash-master.owner = "cwpearson";
  inputs.src-murmurhash-master.repo = "nim-murmurhash";
  inputs.src-murmurhash-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-murmurhash-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-murmurhash-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-murmurhash-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}