{
  description = ''Nim implementation of linenoise command line editor'';
  inputs.src-noise-master.flake = false;
  inputs.src-noise-master.type = "github";
  inputs.src-noise-master.owner = "jangko";
  inputs.src-noise-master.repo = "nim-noise";
  inputs.src-noise-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-noise-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-noise-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-noise-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}