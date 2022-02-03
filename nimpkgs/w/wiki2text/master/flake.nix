{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';
  inputs.src-wiki2text-master.flake = false;
  inputs.src-wiki2text-master.type = "github";
  inputs.src-wiki2text-master.owner = "rspeer";
  inputs.src-wiki2text-master.repo = "wiki2text";
  inputs.src-wiki2text-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-wiki2text-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wiki2text-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wiki2text-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}