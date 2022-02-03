{
  description = ''Quickly extracts natural-language text from a MediaWiki XML file.'';
  inputs.src-wiki2text-v0_2.flake = false;
  inputs.src-wiki2text-v0_2.type = "github";
  inputs.src-wiki2text-v0_2.owner = "rspeer";
  inputs.src-wiki2text-v0_2.repo = "wiki2text";
  inputs.src-wiki2text-v0_2.ref = "refs/tags/v0.2";
  
  outputs = { self, nixpkgs, src-wiki2text-v0_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wiki2text-v0_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wiki2text-v0_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}