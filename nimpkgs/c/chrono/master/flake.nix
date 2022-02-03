{
  description = ''Calendars, Timestamps and Timezones utilities.'';
  inputs.src-chrono-master.flake = false;
  inputs.src-chrono-master.type = "github";
  inputs.src-chrono-master.owner = "treeform";
  inputs.src-chrono-master.repo = "chrono";
  inputs.src-chrono-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-chrono-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-chrono-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-chrono-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}