{
  description = ''A simple interactive calculator'';
  inputs.src-cal-master.flake = false;
  inputs.src-cal-master.type = "github";
  inputs.src-cal-master.owner = "xflywind";
  inputs.src-cal-master.repo = "cal";
  inputs.src-cal-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cal-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cal-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cal-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}