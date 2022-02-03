{
  description = ''typed and compiled template engine inspired by jinja2, twig and onionhammer/nim-templates for Nim'';
  inputs.src-nimja-master.flake = false;
  inputs.src-nimja-master.type = "github";
  inputs.src-nimja-master.owner = "enthus1ast";
  inputs.src-nimja-master.repo = "nimja";
  inputs.src-nimja-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimja-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimja-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimja-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}