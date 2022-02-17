{
  description = ''Bindings for libserialport, the cross-platform serial communication library.'';
  inputs.src-serialport-master.flake = false;
  inputs.src-serialport-master.type = "github";
  inputs.src-serialport-master.owner = "nimious";
  inputs.src-serialport-master.repo = "serialport";
  inputs.src-serialport-master.ref = "refs/heads/master";
  
  
  inputs."nimrod".type = "github";
  inputs."nimrod".owner = "riinr";
  inputs."nimrod".repo = "flake-nimble";
  inputs."nimrod".ref = "flake-pinning";
  inputs."nimrod".dir = "nimpkgs/n/nimrod";

  outputs = { self, nixpkgs, src-serialport-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-serialport-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-serialport-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}