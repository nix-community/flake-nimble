{
  description = ''Create ICS files for email invites, eg. invite.ics'';
  inputs."nimics-main".url = "path:./main";
  inputs."nimics-0_2_0".url = "path:./0_2_0";
  inputs."nimics-v0_1_0".url = "path:./v0_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}