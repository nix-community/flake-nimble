{
  description = ''Obsolete - please use serialport instead!'';
  inputs.src-io-serialport-master.flake = false;
  inputs.src-io-serialport-master.type = "github";
  inputs.src-io-serialport-master.owner = "nimious";
  inputs.src-io-serialport-master.repo = "io-serialport";
  inputs.src-io-serialport-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-io-serialport-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-io-serialport-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-io-serialport-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}