{
  description = ''Static blog generator ala Jekyll.'';
  inputs.src-ipsumgenera-master.flake = false;
  inputs.src-ipsumgenera-master.type = "github";
  inputs.src-ipsumgenera-master.owner = "dom96";
  inputs.src-ipsumgenera-master.repo = "ipsumgenera";
  inputs.src-ipsumgenera-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-ipsumgenera-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ipsumgenera-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ipsumgenera-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}