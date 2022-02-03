{
  description = ''Pure Nim XML parser'';
  inputs.src-xml-devel.flake = false;
  inputs.src-xml-devel.type = "github";
  inputs.src-xml-devel.owner = "ba0f3";
  inputs.src-xml-devel.repo = "xml.nim";
  inputs.src-xml-devel.ref = "refs/tags/devel";
  
  outputs = { self, nixpkgs, src-xml-devel, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-xml-devel;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-xml-devel"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}