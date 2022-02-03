{
  description = ''KDialog Qt5 Wrapper, easy API, KISS design'';
  inputs.src-kdialog-master.flake = false;
  inputs.src-kdialog-master.type = "github";
  inputs.src-kdialog-master.owner = "juancarlospaco";
  inputs.src-kdialog-master.repo = "nim-kdialog";
  inputs.src-kdialog-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-kdialog-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-kdialog-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-kdialog-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}