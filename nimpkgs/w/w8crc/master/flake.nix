{
  description = ''Full-featured CRC library for Nim.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-w8crc-master.flake = false;
  inputs.src-w8crc-master.type = "github";
  inputs.src-w8crc-master.owner = "sumatoshi";
  inputs.src-w8crc-master.repo = "w8crc";
  inputs.src-w8crc-master.ref = "refs/heads/master";
  inputs.src-w8crc-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-w8crc-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-w8crc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-w8crc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}