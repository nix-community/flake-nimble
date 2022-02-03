{
  description = ''Random password and passphrase generator'';
  inputs.src-randpw-master.flake = false;
  inputs.src-randpw-master.type = "github";
  inputs.src-randpw-master.owner = "pdrb";
  inputs.src-randpw-master.repo = "nim-randpw";
  inputs.src-randpw-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-randpw-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-randpw-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-randpw-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}