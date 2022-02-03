{
  description = ''Wrapper for linenoise, a free, self-contained alternative to GNU readline.'';
  inputs.src-linenoise-master.flake = false;
  inputs.src-linenoise-master.type = "github";
  inputs.src-linenoise-master.owner = "fallingduck";
  inputs.src-linenoise-master.repo = "linenoise-nim";
  inputs.src-linenoise-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-linenoise-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-linenoise-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-linenoise-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}