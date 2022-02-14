{
  description = ''Full-featured CRC library for Nim.'';
  inputs.src-w8crc-master.flake = false;
  inputs.src-w8crc-master.type = "github";
  inputs.src-w8crc-master.owner = "sumatoshi";
  inputs.src-w8crc-master.repo = "w8crc";
  inputs.src-w8crc-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-w8crc-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-w8crc-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-w8crc-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}