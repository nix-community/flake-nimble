{
  description = ''A tiny calendar program'';
  inputs.src-calendar-master.flake = false;
  inputs.src-calendar-master.type = "github";
  inputs.src-calendar-master.owner = "adam-mcdaniel";
  inputs.src-calendar-master.repo = "calendar";
  inputs.src-calendar-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-calendar-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-calendar-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-calendar-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}