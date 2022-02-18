{
  description = ''Create ICS files for email invites, eg. invite.ics'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-nimics-main.flake = false;
  inputs.src-nimics-main.type = "github";
  inputs.src-nimics-main.owner = "ThomasTJdev";
  inputs.src-nimics-main.repo = "nimics";
  inputs.src-nimics-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-nimics-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimics-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-nimics-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}