{
  description = ''Obsolete - please use serialport instead!'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-io-serialport-master.flake = false;
  inputs.src-io-serialport-master.type = "github";
  inputs.src-io-serialport-master.owner = "nimious";
  inputs.src-io-serialport-master.repo = "io-serialport";
  inputs.src-io-serialport-master.ref = "refs/heads/master";
  inputs.src-io-serialport-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-io-serialport-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-serialport-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-io-serialport-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}