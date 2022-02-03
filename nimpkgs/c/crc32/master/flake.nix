{
  description = ''CRC32, 2 proc, copied from RosettaCode.'';
  inputs.src-crc32-master.flake = false;
  inputs.src-crc32-master.type = "github";
  inputs.src-crc32-master.owner = "juancarlospaco";
  inputs.src-crc32-master.repo = "nim-crc32";
  inputs.src-crc32-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-crc32-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crc32-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-crc32-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}