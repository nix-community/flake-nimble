{
  description = ''
    Table implemented as optimized sorted hashed dictionary of {array[char]: Option[T]}, same size as OrderedTable
  '';
  inputs.src-dik.url = "https://github.com/juancarlospaco/dik";
  outputs = inputs:
    let lib = import ../../nim-pkgs-drvs.nix;
    in lib.mkOutput {
      inherit inputs;
      meta = ./meta.json;
    };
}
