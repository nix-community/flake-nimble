{
  description = ''interactive command prompt'';
  inputs.src-cmd-master.flake = false;
  inputs.src-cmd-master.type = "github";
  inputs.src-cmd-master.owner = "samdmarshall";
  inputs.src-cmd-master.repo = "cmd.nim";
  inputs.src-cmd-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cmd-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cmd-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cmd-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}