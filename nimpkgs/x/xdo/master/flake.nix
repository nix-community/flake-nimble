{
  description = ''Nim GUI Automation Linux, simulate user interaction, mouse and keyboard.'';
  inputs.src-xdo-master.flake = false;
  inputs.src-xdo-master.type = "github";
  inputs.src-xdo-master.owner = "juancarlospaco";
  inputs.src-xdo-master.repo = "nim-xdo";
  inputs.src-xdo-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-xdo-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xdo-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xdo-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}