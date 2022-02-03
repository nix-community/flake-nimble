{
  description = ''libxslxwriter wrapper for Nim'';
  inputs.src-nimlibxlsxwriter-master.flake = false;
  inputs.src-nimlibxlsxwriter-master.type = "github";
  inputs.src-nimlibxlsxwriter-master.owner = "ThomasTJdev";
  inputs.src-nimlibxlsxwriter-master.repo = "nimlibxlsxwriter";
  inputs.src-nimlibxlsxwriter-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimlibxlsxwriter-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimlibxlsxwriter-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimlibxlsxwriter-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}