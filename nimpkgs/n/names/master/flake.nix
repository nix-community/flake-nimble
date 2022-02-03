{
  description = ''String interning library'';
  inputs.src-names-master.flake = false;
  inputs.src-names-master.type = "github";
  inputs.src-names-master.owner = "pragmagic";
  inputs.src-names-master.repo = "names";
  inputs.src-names-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-names-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-names-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-names-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}