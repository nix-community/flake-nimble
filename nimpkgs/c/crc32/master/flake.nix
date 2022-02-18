{
  description = ''CRC32, 2 proc, copied from RosettaCode.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-crc32-master.flake = false;
  inputs.src-crc32-master.type = "github";
  inputs.src-crc32-master.owner = "juancarlospaco";
  inputs.src-crc32-master.repo = "nim-crc32";
  inputs.src-crc32-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-crc32-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-crc32-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-crc32-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}