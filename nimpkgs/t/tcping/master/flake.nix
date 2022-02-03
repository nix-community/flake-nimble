{
  description = ''Ping hosts using tcp packets'';
  inputs.src-tcping-master.flake = false;
  inputs.src-tcping-master.type = "github";
  inputs.src-tcping-master.owner = "pdrb";
  inputs.src-tcping-master.repo = "tcping";
  inputs.src-tcping-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-tcping-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tcping-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tcping-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}