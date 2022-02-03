{
  description = ''Encode/decode arbitrary unicode bases from size 2 to 256'';
  inputs.src-nbaser-develop.flake = false;
  inputs.src-nbaser-develop.type = "github";
  inputs.src-nbaser-develop.owner = "D-Nice";
  inputs.src-nbaser-develop.repo = "nbaser";
  inputs.src-nbaser-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-nbaser-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nbaser-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nbaser-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}