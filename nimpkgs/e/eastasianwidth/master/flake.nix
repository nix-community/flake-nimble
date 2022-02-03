{
  description = ''eastasianwidth is library for EastAsianWidth.'';
  inputs.src-eastasianwidth-master.flake = false;
  inputs.src-eastasianwidth-master.type = "github";
  inputs.src-eastasianwidth-master.owner = "jiro4989";
  inputs.src-eastasianwidth-master.repo = "eastasianwidth";
  inputs.src-eastasianwidth-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-eastasianwidth-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-eastasianwidth-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-eastasianwidth-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}