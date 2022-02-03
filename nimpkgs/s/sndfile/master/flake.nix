{
  description = ''A wrapper of libsndfile'';
  inputs.src-sndfile-master.flake = false;
  inputs.src-sndfile-master.type = "github";
  inputs.src-sndfile-master.owner = "julienaubert";
  inputs.src-sndfile-master.repo = "nim-sndfile";
  inputs.src-sndfile-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-sndfile-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-sndfile-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-sndfile-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}