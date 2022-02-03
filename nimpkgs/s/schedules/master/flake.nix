{
  description = ''A Nim scheduler library that lets you kick off jobs at regular intervals.'';
  inputs.src-schedules-master.flake = false;
  inputs.src-schedules-master.type = "github";
  inputs.src-schedules-master.owner = "soasme";
  inputs.src-schedules-master.repo = "nim-schedules";
  inputs.src-schedules-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-schedules-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-schedules-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-schedules-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}