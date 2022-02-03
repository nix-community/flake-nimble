{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
  inputs.src-nbaser-master.flake = false;
  inputs.src-nbaser-master.type = "github";
  inputs.src-nbaser-master.owner = "D-Nice";
  inputs.src-nbaser-master.repo = "nbaser";
  inputs.src-nbaser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nbaser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nbaser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}