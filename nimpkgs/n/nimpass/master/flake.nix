{
  description = ''quickly generate cryptographically secure passwords and phrases'';
  inputs.src-nimpass-master.flake = false;
  inputs.src-nimpass-master.type = "github";
  inputs.src-nimpass-master.owner = "xioren";
  inputs.src-nimpass-master.repo = "NimPass";
  inputs.src-nimpass-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimpass-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimpass-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimpass-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}