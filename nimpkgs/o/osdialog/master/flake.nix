{
  description = ''Nim wrapper for the osdialog library'';
  inputs.src-osdialog-master.flake = false;
  inputs.src-osdialog-master.type = "github";
  inputs.src-osdialog-master.owner = "johnnovak";
  inputs.src-osdialog-master.repo = "nim-osdialog";
  inputs.src-osdialog-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-osdialog-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-osdialog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-osdialog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}