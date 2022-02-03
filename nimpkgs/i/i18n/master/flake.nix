{
  description = ''Bring a gettext-like internationalisation module to Nim'';
  inputs.src-i18n-master.flake = false;
  inputs.src-i18n-master.type = "github";
  inputs.src-i18n-master.owner = "Parashurama";
  inputs.src-i18n-master.repo = "nim-i18n";
  inputs.src-i18n-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-i18n-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-i18n-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-i18n-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}