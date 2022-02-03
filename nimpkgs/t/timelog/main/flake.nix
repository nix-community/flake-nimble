{
  description = ''Simple nimble package to log monotic timings'';
  inputs.src-timelog-main.flake = false;
  inputs.src-timelog-main.type = "github";
  inputs.src-timelog-main.owner = "Clonkk";
  inputs.src-timelog-main.repo = "timelog";
  inputs.src-timelog-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-timelog-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-timelog-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-timelog-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}