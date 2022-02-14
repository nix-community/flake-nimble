{
  description = ''Modular multithreading Linux HTTP server'';
  inputs."guildenstern-master".url = "path:./master";
  inputs."guildenstern-0_7".url = "path:./0_7";
  inputs."guildenstern-0_8".url = "path:./0_8";
  inputs."guildenstern-0_9".url = "path:./0_9";
  inputs."guildenstern-1_0_0".url = "path:./1_0_0";
  inputs."guildenstern-1_0_1".url = "path:./1_0_1";
  inputs."guildenstern-2_0_0".url = "path:./2_0_0";
  inputs."guildenstern-3_0_0".url = "path:./3_0_0";
  inputs."guildenstern-3_1_0".url = "path:./3_1_0";
  inputs."guildenstern-4_0_0".url = "path:./4_0_0";
  inputs."guildenstern-4_0_0-rc1".url = "path:./4_0_0-rc1";
  inputs."guildenstern-5_0_0".url = "path:./5_0_0";
  inputs."guildenstern-5_1_0".url = "path:./5_1_0";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}