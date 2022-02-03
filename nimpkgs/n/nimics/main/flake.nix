{
  description = ''Create ICS files for email invites, eg. invite.ics'';
  inputs.src-nimics-main.flake = false;
  inputs.src-nimics-main.type = "github";
  inputs.src-nimics-main.owner = "ThomasTJdev";
  inputs.src-nimics-main.repo = "nimics";
  inputs.src-nimics-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, src-nimics-main, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimics-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimics-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}